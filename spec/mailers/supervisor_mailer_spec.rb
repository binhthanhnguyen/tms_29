require "rails_helper"

RSpec.describe SupervisorMailer, type: :mailer do

  describe ".monthly_report(supervisor)" do
    subject(:admin) {FactoryGirl.build :admin}
    subject(:mail) {SupervisorMailer.monthly_report(admin)}

    it {expect(mail.from).to eq ["from@example.com"]}
    it {expect(mail.to).to eq [admin.email]}
    it {expect(mail.subject).to eq "Monthly Report"}
  end
end
