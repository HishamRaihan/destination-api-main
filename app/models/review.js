const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const reviewSchema = new Schema(
	{
		title: {
			type: String,
			required: true
		},
		content: {
			type: String,
			required: true
		}
	},
	{
		timestamps: true
	}
);
// for subdocument relationship we dont need to create a model instead we will
// export the reviewSchema so it can be uses by the restaurantSchema
module.exports = reviewSchema