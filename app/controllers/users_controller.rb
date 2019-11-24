class UsersController < ApplicationController
	before_action :set_user, only: [:update, :show]
	before_action :find_user, only: [:edit, :destroy]

	def index
		@users = User.all
		@users = User.page(params[:page]).per(5)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(set_params)
		if @user.save
			flash[:success] = '使用者を登録しました'
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def update
		if @user.update(set_params)
			flash[:success] = '使用者の情報を更新しました'
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def edit
	end

	def show
	end

	def destroy
		if @user.destroy
			flash[:danger] = '使用者を削除しました'
			redirect_to action: 'index'
		else
			flash[:danger] = '使用者を削除できませんでした'
			redirect_to action: 'index'
		end
	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def set_params
		params.require(:user).permit(
			:first_name,
			:last_name,
			:birthday,
			:email
			)
	end

	def find_user
		@user = User.find(params[:id])
	end
end
