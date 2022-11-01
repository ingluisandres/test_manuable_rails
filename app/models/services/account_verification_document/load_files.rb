module Services
  module AccountVerificationDocument
    class LoadFiles
      def initialize(params)
        @params = params[:account_verification_document]
        @account_verification_document = get_file(@params)
        @account = params[:account]
      end

      def create
        account_verification_document = ::AccountVerificationDocument.create(get_file(@params))
        account_verification_document.update(account_id: @account.id, file_id: @params[:file_id].to_i)
        
      end

      private

      def validate
      
      end

      def get_file(params)
        params.require(:account_verification_document).permit(:file)
      end
    end
  end
end

