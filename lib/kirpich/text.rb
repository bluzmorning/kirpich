module Kirpich
  class Text
    APPEAL_REGEX = /(миша|мишаня|мих|миха|миш|михан|мишань|народ),?\s*/i
    FAP_REGEX = /(сиськи|сисяндры|сисяндра|титьки|письки|секс|эротика|титьк|грудь|сисек|сиська|сиськи|сиську|сосок|жоп|задниц|попец|голую|телку|сисечки|голая|обнаженная|буфер)/i

    attr_reader :clean, :original

    def initialize(text)
      @original = text
      @clean = text.downcase.gsub(APPEAL_REGEX, '')
    end

    def question?
      @original =~ /\?$/
    end

    def appeal?
      @original =~ APPEAL_REGEX
    end

    def fap?
      @original =~ FAP_REGEX
    end
  end
end
