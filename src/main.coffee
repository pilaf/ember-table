require 'build/src/templates'

## Used for bundling files together using neuter
Ember.Table = Ember.Namespace.create()
Ember.Table.VERSION = '0.4.0'

Ember.libraries?.register 'Ember Table', Ember.Table.VERSION

# Dependencies
require 'dependencies/ember-addepar-mixins/resize_handler'
require 'dependencies/ember-addepar-mixins/style_bindings'

# Utils
require 'build/src/utils/jquery_fix'
require 'build/src/utils/lazy_container_view'
require 'build/src/utils/utils'

# Ember-Table
require 'build/src/column'
require 'build/src/row'
require 'build/src/views'
require 'build/src/component'

Ember.Application.initializer
  name: 'em-table',

  initialize: (c) ->
    c.register 'view:em-table-header-table-container',     Ember.Table.HeaderTableContainer
    c.register 'view:em-table-body-table-container',       Ember.Table.BodyTableContainer
    c.register 'view:em-table-footer-table-container',     Ember.Table.FooterTableContainer
    c.register 'view:em-table-scroll-container',           Ember.Table.ScrollContainer
    c.register 'view:em-table-scroll-panel',               Ember.Table.ScrollPanel
    c.register 'view:em-table-column-sortable-indicator',  Ember.Table.ColumnSortableIndicator
    c.register 'view:em-table-lazy-table-block',           Ember.Table.LazyTableBlock
    c.register 'view:em-table-table-block',                Ember.Table.TableBlock
    c.register 'view:em-table-header-block',               Ember.Table.HeaderBlock
    c.register 'view:em-table-header-row',                 Ember.Table.HeaderRow
    c.register 'view:multi-item-view-collection', Ember.MultiItemViewCollectionView
