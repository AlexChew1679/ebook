class TransactionsController < ApplicationController

def create
  book = Book.find_by!(slug: params[:slug])
  token = params[:stripeToken]

  begin
    charge = Stripe::Charge.create(
      amount: book.price
      currency: "usd"
      card: token
      description: current_user.email
      )
end

def pickup
end
end