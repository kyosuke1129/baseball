class User < ActiveRecord::Base
  belongs_to :team
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, #, :confirmable,
         authentication_keys: [:email, :team_key]

  attr_accessor :team_key

  before_validation :team_key_to_id, if: :has_team_key?

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    team_key = conditions.delete(:team_key)
    team_id = Team.where(key: team_key).first
    email = conditions.delete(:email)

    if team_id && email
      where(conditions).where(["team_id = :team_id AND email = :email",
        { team_id: team_id, email: email }]).first
    elsif conditions.has_key?(:confirmation_token)
      where(conditions).first
    else
      false
    end
  end

  private
  def has_team_key?
    team_key.present?
  end

  def team_key_to_id
    team = Team.where(key: team_key).first_or_create
    self.team_id = team.id
  end

end
