const mongoose = require('mongoose');
const reviewSchema = require('./review');
const destinationSchema = new mongoose.Schema(
	{
		place: {
			type: String,
			required: true
		},
		monthTraveled: {
			type: String,
			required: true
		},
		daysStayed: {
			type: Number,
			required: true
		},
		moneySpent: {
			type: Number,
			required: true
		},
		review: {
			type: String
		},
		owner: {
			type: mongoose.Schema.Types.ObjectId,
			ref: 'User',
			required: true
		}
	},
	{
		timestamps: true
	}
);

module.exports = mongoose.model('Destination', destinationSchema);
