.. include:: feedback_widget.rst

===============================
Advanced UI Configuration
===============================

Disabling Error Alerts
--------------------------------

If the error alert messages that the default Socialize UI objects emit do not fit your needs,
you can remove them using [Socialize storeUIErrorAlertsDisabled:YES].

In addition, a notification will be posted for all Socialize UI errors.

.. literalinclude:: snippets/disable_error_alerts.m
  :start-after: begin-snippet
  :end-before: end-snippet

.. note::  The notification will be posted regardless of whether or not you disable error alerts.

Automatic Third Party Linking
--------------------------------

v1.6.2 introduces Automatic Authentication for your users. Our data indicates
that users who authenticate with a 3rd party (e.g. Twitter or Facebook) are
much more likely to introduce new users to your app via the viral effect of
activity within your app propagating to these 3rd party networks. From v1.6.3
onwards the Socialize SDK will default to requiring users authenticate with a
3rd party prior to performing any social action (e.g. Comment or Like).

This default behavior can be overridden by the developer (you) with the
following settings:

.. literalinclude:: snippets/third_party_link_options.m
  :start-after: begin-snippet
  :end-before: end-snippet

Standalone Share
----------------

v1.7.6 introduces standalone share functionality. This will allow you to add a share button
to your app. 

.. note:: This feature was exposed because of high demand, but the share functionality will be changing significantly in Socialize v2.0. The associated will likely be deprecated with the release of v2.0.

.. literalinclude:: snippets/standalone_share.m
  :start-after: begin-snippet
  :end-before: end-snippet

Disabling Location
------------------

If do not wish for Socialize to ask for the user's location under any circumstances, you can
completely disable location sharing

.. literalinclude:: snippets/ui_advanced.m
  :start-after: begin-disable-location-snippet
  :end-before: end-disable-location-snippet

.. _global_display:

Overriding Global Display Behavior
----------------------------------

For asynchronous events such as notifications, Socialize needs a way to display UI elements
to the screen. By default, it will attempt to discover the topmost view controller in the app.
If this fails, it will resort to manual UIView management in the application's root window.
Should you need to override this behavior, you can do so by implementing the SZDisplay protocol
and returning it dynamically using [SZDisplayUtils setGlobalDisplayBlock:], as below

.. literalinclude:: snippets/ui_advanced.m
  :start-after: begin-define-global-display-snippet
  :end-before: end-define-global-display-snippet

.. note:: A default implementation of the SZDisplay protocol for UIViewControllers is provided
  for you. If you wish, you can also provide your own SZDisplay implementation. See the SZDisplay.h
  header for the full list of messages you should define.
