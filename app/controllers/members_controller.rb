class MembersController < ApplicationController
  def candidate
    @member = Member.new(member_type: 'candidate')
  end

  def business
    @member = Member.new(member_type: 'business')
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to :thanks
    else
      render :new
    end
  end

  def thanks; end

  private

  def member_params
    params.require(:member).permit(:name, :email, :member_type, :details)
  end
end
