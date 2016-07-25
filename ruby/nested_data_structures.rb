# Design and Build a Nested Data Structure

kennedy_center = {
    vip: {
        show: [
        	'Alicia Keys', 
        	'John Mayer', 
        	'Kid Cudi'
        ],
        volunteers: {
            total: 11,
            needed: 4
        },
        appetizers: [
            'Stuffed Brussel Sprouts', 
            'Mozarella Sticks'
        ]
    },
    balcony_seat: {
        show: [
        	'J. Cole', 
        	'Amy Winehouse', 
        	'John Legend'
        ],
        volunteers: {
            total: 1,
            needed: 14
        },
        appetizers: [
            'Mac n Cheese', 
            'Greek Salad'
        ]
    },
    general_admission: {
        show: [
        	'BJ the Chicago Kid', 
        	'Luke James'
        ],
        volunteers: {
            total: 6,
            needed: 9
        },
        appetizers: [
        	'Pulled Pork Tacos',
        	'Guacamole and Chips'
        ]
    }
}

p kennedy_center


p kennedy_center[:vip][:show][1]
p kennedy_center[:balcony_seat][:volunteers][:needed]
p kennedy_center[:general_admission][:appetizers].push('Buffalo Wings')
p kennedy_center[:vip][:show][2] = 'Ed Sheeran'

p kennedy_center

