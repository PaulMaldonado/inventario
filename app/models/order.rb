class Order < ApplicationRecord
	validates :pedido, presence: true
	validates :codigo, presence: true
	validates :solicitud, presence: true
	validates :surtido, presence: true
end
