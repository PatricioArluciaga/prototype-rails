require 'action_controller/metal/rendering'

module ActionController::Rendering::UpdateRendering

  private

  # Normalize arguments by catching blocks and setting them on :update.
  # Copied from rails 6
  def _normalize_args(action = nil, options = {}, &blk)
    options = super
    options[:update] = blk if block_given?
    options
  end
end

ActionController::Rendering.include ActionController::Rendering::UpdateRendering
