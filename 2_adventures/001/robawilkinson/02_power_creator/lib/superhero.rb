require 'faker'
class Superhero
  @@adjectives = ["mega","super","epic"]
  @@superpowers = %{Adhesion
Amphibious
Animal control
Animate/control the dead
Autonomic function control
Body duplication
Body transformation
Bullet-proof
Chemical control
Clairvoyance
Cold generation
Computer hacking
Cosmic awareness
Danger sense
Dark generation/control
Density control
Deus ex machina
Direct computer interface
Earthquake generation
Earth/rock control
Elasticity
Electrical generation/control
Electromagnetism
Empathy
Encyclopedic knowledge
Energy absorption
Energy blasts
Energy manipulation
Enhanced agility
Enhanced common sense
Enhanced senses
Enhanced senses
Escape artist
Explodes
Extra appendage(s)
Extra-dimensional travel
Extreme popularity
Flame generation/control
Flight Flight Flight
Force blasts
Force field generation
Friction manipulation
Gadget creation
Glows in the dark
Growth
Gravity control
Heat generation
Heat vision
Hold breath indefinitely
Hypnosis
Ice generation
Illusion casting
Image projection
Immortality
Incomprehensibility
Incredible balance
Insect control
Instant language understanding
Intangibility
Intuition
Invisibility
Invulnerability
Juggling
Laser vision
Light generation/control
Luck
Lycanthrope
Machine control
Magic spell casting
Magnetism
Martial arts mastery
Matter consumption
Microscopic vision
Mind control
Mind-numbing beauty/ugliness
Molecular control
Odor generation
Omni directional sight
Omnipotence
Omniscience
Perfect pitch
Photographic memory
Plant control
Poison resistance
Power mimicry
Precognition
Prehensile tail
Psychic
Pyrokinesis
Radar sense
Radiation generation/control
Regeneration
Reinforced skeleton
Seventh sense
Shape-shifting
Sharp shooting
Shrinking
Smoke generation/control
Sound generation/control
Speed reading
Super breath
Super hearing
Super intelligence
Super jumping
Super loud voice
Super speed
Super spelling
Super strength Super strength Super strength
Super ventriloquism
Super-human hand-eye coordination
Super-human stamina
Super-human throwing accuracy
Super-human weight-guessing accuracy
Telekinesis
Telepathy
Teleportation
Telescopic vision
Time manipulation
Time travel
Water control
Weapon mastery
Weather control
Weather prediction
Unaided outer space travel
X-ray vision
}.lines
@@orientation = ['neutral', 'evil', 'good']
@@level = ['lawful','neutral','chaotic']
  def self.power
    "#{@@adjectives.sample} #{@@superpowers.sample.downcase.gsub(/\n/, '')}"
  end
  def self.alignment
    "#{@@level.sample} #{@@orientation.sample}"
  end
  def self.name
    Faker::App.name
  end
  def self.describe
    name = Faker::App.name
    "#{name} is #{@@level.sample} #{@@orientation.sample} and their power is #{@@adjectives.sample} #{@@superpowers.sample.downcase.gsub(/\n/, '')}"
  end
end
