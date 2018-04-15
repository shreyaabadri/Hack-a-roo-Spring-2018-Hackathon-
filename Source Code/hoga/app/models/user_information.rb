class UserInformation < ApplicationRecord
	# belongs_to :user

	def avg_score
		resp = ["wk4attav", "wk5attav", "wk6attav", "wk7attav", "wk8attav", "wk10attav", "wk12attav", "wk14attav", "wk15attav", "wk16attav", "wk17attav", "wk18attav", "wk19attav", "wk20attav", "wk21attav", "wk22attav", "wk25attav", "wk26attav", "wk27attav", "wk28attav", "wk29attav", "wk30attav"]
		resp = resp.map{|x| self[x]}.map(&:to_f)
		resp.sum/resp.compact.size * 100
	end
end
