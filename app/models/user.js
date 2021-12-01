const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
  email: {
    type: String,
    required: true,
    unique: true
  },
  hashedPassword: {
    type: String,
    required: true
  },
  token: String
}, {
  timestamps: true,
  toJSON: {
    // remove `hashedPassword` field when we call `.toJSON`
    transform: (_doc, user) => {
      delete user.hashedPassword
      return user
    }
  }
})
// can add username field type string and a virtual message and use username when displaying user
// heroSchema.virtual('heroStats').get(function () {
	// return `${this.fullName} from ${this.world } Stats: Sex - ${this.gender}, Special Ability - ${this.specialAbility}, Height - ${this.height}, Weight - ${this.weight}, Power Level - ${this.powerLevel}`;

module.exports = mongoose.model('User', userSchema)
