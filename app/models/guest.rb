class Guest < ApplicationRecord
	enum hacked: { No: 0, Yes: 1 }
end
