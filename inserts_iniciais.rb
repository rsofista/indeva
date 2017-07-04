user_lucas  = User.create! email: 'lucas@mail.com', password: 'lucas'
user_marcos = User.create! email: 'marcos@mail.com', password: 'marcos'

store_ananias_centro = Store.create! name: 'Lojas Ananias - Centro'
store_ananias_bairro = Store.create! name: 'Lojas Ananias - Bairro'
store_calcados_tiger = Store.create! name: 'Calçados Tiger'

user_lucas.user_stores.create! store: store_ananias_centro
user_lucas.user_stores.create! store: store_ananias_bairro
user_marcos.user_stores.create! store: store_calcados_tiger

seller_l_jonas   = Seller.create! name: 'Jonas L'
seller_l_pablo   = Seller.create! name: 'Pablo L'
seller_l_juliana = Seller.create! name: 'Juliana L'
seller_l_carlota = Seller.create! name: 'Carlota L'
seller_m_marcelo = Seller.create! name: 'Marcelo M'
seller_m_arnaldo = Seller.create! name: 'Arnaldo M'
seller_m_carlos  = Seller.create! name: 'Carlos M'
seller_m_suzana  = Seller.create! name: 'Suzana M'

store_ananias_centro.store_sellers.create! seller: seller_l_jonas
store_ananias_centro.store_sellers.create! seller: seller_l_pablo
store_ananias_bairro.store_sellers.create! seller: seller_l_juliana
store_ananias_bairro.store_sellers.create! seller: seller_l_carlota
store_calcados_tiger.store_sellers.create! seller: seller_m_marcelo
store_calcados_tiger.store_sellers.create! seller: seller_m_arnaldo
store_calcados_tiger.store_sellers.create! seller: seller_m_carlos
store_calcados_tiger.store_sellers.create! seller: seller_m_suzana


today = Date.today

beg_goal = today.beginning_of_month + 1.day
end_goal = today.end_of_month + 1.day

beg_next_goal = beg_goal + 1.month
end_next_goal = end_goal + 1.month

goal_ananias_centro1 = Goal.create! user: user_lucas,  store: store_ananias_centro, start_date: beg_goal,      end_date: end_goal,      value: rand * 1000, year: beg_goal.year,      month: beg_goal.month
goal_ananias_centro2 = Goal.create! user: user_lucas,  store: store_ananias_centro, start_date: beg_next_goal, end_date: end_next_goal, value: rand * 1000, year: beg_next_goal.year, month: beg_next_goal.month
goal_ananias_bairro  = Goal.create! user: user_lucas,  store: store_ananias_bairro, start_date: beg_goal,      end_date: end_goal,      value: rand * 1000, year: beg_goal.year,      month: beg_goal.month
goal_calcados_tiger1 = Goal.create! user: user_marcos, store: store_calcados_tiger, start_date: beg_goal,      end_date: end_goal,      value: rand * 1000, year: beg_goal.year,      month: beg_goal.month
goal_calcados_tiger2 = Goal.create! user: user_marcos, store: store_calcados_tiger, start_date: beg_next_goal, end_date: end_next_goal, value: rand * 1000, year: beg_next_goal.year, month: beg_next_goal.month

def generate_goal_days goal, sellers
	day_value = goal.value / ((goal.end_date - goal.start_date) + 1).to_i

	goal.start_date.upto(goal.end_date) do |date|
		goal_day = goal.goal_days.create! date: date, day: date.day, value: day_value

		sellers_sample = sellers.sample((rand * (sellers.size-1)).to_i+1)

		sellers_sample.each do |seller|
			goal_day.seller_goal_days.create! seller: seller, value: day_value / sellers_sample.count
		end
	end
end

l_sellers = [seller_l_jonas, seller_l_pablo, seller_l_juliana, seller_l_carlota]
m_sellers = [seller_m_marcelo, seller_m_arnaldo, seller_m_carlos, seller_m_suzana]

generate_goal_days goal_ananias_centro1, l_sellers
generate_goal_days goal_ananias_centro2, l_sellers
generate_goal_days goal_ananias_bairro,  l_sellers

generate_goal_days goal_calcados_tiger1, l_sellers
generate_goal_days goal_calcados_tiger2, l_sellers
