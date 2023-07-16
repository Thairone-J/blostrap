module ArticlesHelper
    def date_formater(datetime)
        datetime.strftime("%B %e, %Y")
    end
end
