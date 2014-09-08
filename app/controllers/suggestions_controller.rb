class SuggestionsController < ApplicationController
	autocomplete :account, :name
end
