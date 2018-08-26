module ApplicationHelper
    def render_if_not_empty(condition, cart_contents)
        if condition
            render cart_contents
        end
    end
end
