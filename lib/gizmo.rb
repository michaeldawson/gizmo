require 'rubygems'
require 'active_support'
require 'nokogiri'
require 'tilt'

require 'gizmo/page'
require 'gizmo/helpers'
require 'gizmo/page_mixin'
require 'gizmo/templates'
require 'gizmo/configuration'

$LOAD_PATH << File.dirname(__FILE__)

module Gizmo
  GizmoError = Class.new(StandardError)
  MixinNotValidError = Class.new(GizmoError)
  MixinNotFoundError = Class.new(GizmoError)
  NilResponseError = Class.new(GizmoError)
end
