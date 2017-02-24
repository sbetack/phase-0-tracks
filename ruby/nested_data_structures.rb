classroom = {
	desk_1: {
		pencils: {
			with_erasers: 4,
			with_out_erasers: 12
		},
		markers: ['red', 'green', 'blue'],
		lunch: nil
	},
	desk_2: {
		pencils: {
			with_erasers: 10,
			with_out_erasers: 2
		},
		markers: ['yellow', 'purple', 'red'],
		lunch: "pb&j"

	},
	desk_3: {
		pencils: {
			with_erasers: 1,
			with_out_erasers: 20
		},
		markers: ['yellow', 'purple', 'red'],
		lunch: 'pb&j',
		scissors: 'right-handed'
	}
}


p classroom[:desk_2][:lunch]

p classroom[:desk_3][:pencils][:with_erasers]

p classroom[:desk_1][:markers][2]

