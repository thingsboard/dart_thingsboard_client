// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'white_labeling_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WhiteLabelingParams extends WhiteLabelingParams {
  @override
  final String? logoImageUrl;
  @override
  final int? logoImageHeight;
  @override
  final String? collapsedLogoImageUrl;
  @override
  final String? appTitle;
  @override
  final Favicon? favicon;
  @override
  final PaletteSettings? paletteSettings;
  @override
  final bool? primaryColorPanels;
  @override
  final String? helpLinkBaseUrl;
  @override
  final String? uiHelpBaseUrl;
  @override
  final bool? enableHelpLinks;
  @override
  final bool? whiteLabelingEnabled;
  @override
  final bool? showNameVersion;
  @override
  final String? platformName;
  @override
  final String? platformVersion;
  @override
  final String? customCss;
  @override
  final bool? hideConnectivityDialog;
  @override
  final bool? overrideTrendzName;

  factory _$WhiteLabelingParams([
    void Function(WhiteLabelingParamsBuilder)? updates,
  ]) => (WhiteLabelingParamsBuilder()..update(updates))._build();

  _$WhiteLabelingParams._({
    this.logoImageUrl,
    this.logoImageHeight,
    this.collapsedLogoImageUrl,
    this.appTitle,
    this.favicon,
    this.paletteSettings,
    this.primaryColorPanels,
    this.helpLinkBaseUrl,
    this.uiHelpBaseUrl,
    this.enableHelpLinks,
    this.whiteLabelingEnabled,
    this.showNameVersion,
    this.platformName,
    this.platformVersion,
    this.customCss,
    this.hideConnectivityDialog,
    this.overrideTrendzName,
  }) : super._();
  @override
  WhiteLabelingParams rebuild(
    void Function(WhiteLabelingParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WhiteLabelingParamsBuilder toBuilder() =>
      WhiteLabelingParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhiteLabelingParams &&
        logoImageUrl == other.logoImageUrl &&
        logoImageHeight == other.logoImageHeight &&
        collapsedLogoImageUrl == other.collapsedLogoImageUrl &&
        appTitle == other.appTitle &&
        favicon == other.favicon &&
        paletteSettings == other.paletteSettings &&
        primaryColorPanels == other.primaryColorPanels &&
        helpLinkBaseUrl == other.helpLinkBaseUrl &&
        uiHelpBaseUrl == other.uiHelpBaseUrl &&
        enableHelpLinks == other.enableHelpLinks &&
        whiteLabelingEnabled == other.whiteLabelingEnabled &&
        showNameVersion == other.showNameVersion &&
        platformName == other.platformName &&
        platformVersion == other.platformVersion &&
        customCss == other.customCss &&
        hideConnectivityDialog == other.hideConnectivityDialog &&
        overrideTrendzName == other.overrideTrendzName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logoImageUrl.hashCode);
    _$hash = $jc(_$hash, logoImageHeight.hashCode);
    _$hash = $jc(_$hash, collapsedLogoImageUrl.hashCode);
    _$hash = $jc(_$hash, appTitle.hashCode);
    _$hash = $jc(_$hash, favicon.hashCode);
    _$hash = $jc(_$hash, paletteSettings.hashCode);
    _$hash = $jc(_$hash, primaryColorPanels.hashCode);
    _$hash = $jc(_$hash, helpLinkBaseUrl.hashCode);
    _$hash = $jc(_$hash, uiHelpBaseUrl.hashCode);
    _$hash = $jc(_$hash, enableHelpLinks.hashCode);
    _$hash = $jc(_$hash, whiteLabelingEnabled.hashCode);
    _$hash = $jc(_$hash, showNameVersion.hashCode);
    _$hash = $jc(_$hash, platformName.hashCode);
    _$hash = $jc(_$hash, platformVersion.hashCode);
    _$hash = $jc(_$hash, customCss.hashCode);
    _$hash = $jc(_$hash, hideConnectivityDialog.hashCode);
    _$hash = $jc(_$hash, overrideTrendzName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhiteLabelingParams')
          ..add('logoImageUrl', logoImageUrl)
          ..add('logoImageHeight', logoImageHeight)
          ..add('collapsedLogoImageUrl', collapsedLogoImageUrl)
          ..add('appTitle', appTitle)
          ..add('favicon', favicon)
          ..add('paletteSettings', paletteSettings)
          ..add('primaryColorPanels', primaryColorPanels)
          ..add('helpLinkBaseUrl', helpLinkBaseUrl)
          ..add('uiHelpBaseUrl', uiHelpBaseUrl)
          ..add('enableHelpLinks', enableHelpLinks)
          ..add('whiteLabelingEnabled', whiteLabelingEnabled)
          ..add('showNameVersion', showNameVersion)
          ..add('platformName', platformName)
          ..add('platformVersion', platformVersion)
          ..add('customCss', customCss)
          ..add('hideConnectivityDialog', hideConnectivityDialog)
          ..add('overrideTrendzName', overrideTrendzName))
        .toString();
  }
}

class WhiteLabelingParamsBuilder
    implements Builder<WhiteLabelingParams, WhiteLabelingParamsBuilder> {
  _$WhiteLabelingParams? _$v;

  String? _logoImageUrl;
  String? get logoImageUrl => _$this._logoImageUrl;
  set logoImageUrl(String? logoImageUrl) => _$this._logoImageUrl = logoImageUrl;

  int? _logoImageHeight;
  int? get logoImageHeight => _$this._logoImageHeight;
  set logoImageHeight(int? logoImageHeight) =>
      _$this._logoImageHeight = logoImageHeight;

  String? _collapsedLogoImageUrl;
  String? get collapsedLogoImageUrl => _$this._collapsedLogoImageUrl;
  set collapsedLogoImageUrl(String? collapsedLogoImageUrl) =>
      _$this._collapsedLogoImageUrl = collapsedLogoImageUrl;

  String? _appTitle;
  String? get appTitle => _$this._appTitle;
  set appTitle(String? appTitle) => _$this._appTitle = appTitle;

  FaviconBuilder? _favicon;
  FaviconBuilder get favicon => _$this._favicon ??= FaviconBuilder();
  set favicon(FaviconBuilder? favicon) => _$this._favicon = favicon;

  PaletteSettingsBuilder? _paletteSettings;
  PaletteSettingsBuilder get paletteSettings =>
      _$this._paletteSettings ??= PaletteSettingsBuilder();
  set paletteSettings(PaletteSettingsBuilder? paletteSettings) =>
      _$this._paletteSettings = paletteSettings;

  bool? _primaryColorPanels;
  bool? get primaryColorPanels => _$this._primaryColorPanels;
  set primaryColorPanels(bool? primaryColorPanels) =>
      _$this._primaryColorPanels = primaryColorPanels;

  String? _helpLinkBaseUrl;
  String? get helpLinkBaseUrl => _$this._helpLinkBaseUrl;
  set helpLinkBaseUrl(String? helpLinkBaseUrl) =>
      _$this._helpLinkBaseUrl = helpLinkBaseUrl;

  String? _uiHelpBaseUrl;
  String? get uiHelpBaseUrl => _$this._uiHelpBaseUrl;
  set uiHelpBaseUrl(String? uiHelpBaseUrl) =>
      _$this._uiHelpBaseUrl = uiHelpBaseUrl;

  bool? _enableHelpLinks;
  bool? get enableHelpLinks => _$this._enableHelpLinks;
  set enableHelpLinks(bool? enableHelpLinks) =>
      _$this._enableHelpLinks = enableHelpLinks;

  bool? _whiteLabelingEnabled;
  bool? get whiteLabelingEnabled => _$this._whiteLabelingEnabled;
  set whiteLabelingEnabled(bool? whiteLabelingEnabled) =>
      _$this._whiteLabelingEnabled = whiteLabelingEnabled;

  bool? _showNameVersion;
  bool? get showNameVersion => _$this._showNameVersion;
  set showNameVersion(bool? showNameVersion) =>
      _$this._showNameVersion = showNameVersion;

  String? _platformName;
  String? get platformName => _$this._platformName;
  set platformName(String? platformName) => _$this._platformName = platformName;

  String? _platformVersion;
  String? get platformVersion => _$this._platformVersion;
  set platformVersion(String? platformVersion) =>
      _$this._platformVersion = platformVersion;

  String? _customCss;
  String? get customCss => _$this._customCss;
  set customCss(String? customCss) => _$this._customCss = customCss;

  bool? _hideConnectivityDialog;
  bool? get hideConnectivityDialog => _$this._hideConnectivityDialog;
  set hideConnectivityDialog(bool? hideConnectivityDialog) =>
      _$this._hideConnectivityDialog = hideConnectivityDialog;

  bool? _overrideTrendzName;
  bool? get overrideTrendzName => _$this._overrideTrendzName;
  set overrideTrendzName(bool? overrideTrendzName) =>
      _$this._overrideTrendzName = overrideTrendzName;

  WhiteLabelingParamsBuilder() {
    WhiteLabelingParams._defaults(this);
  }

  WhiteLabelingParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logoImageUrl = $v.logoImageUrl;
      _logoImageHeight = $v.logoImageHeight;
      _collapsedLogoImageUrl = $v.collapsedLogoImageUrl;
      _appTitle = $v.appTitle;
      _favicon = $v.favicon?.toBuilder();
      _paletteSettings = $v.paletteSettings?.toBuilder();
      _primaryColorPanels = $v.primaryColorPanels;
      _helpLinkBaseUrl = $v.helpLinkBaseUrl;
      _uiHelpBaseUrl = $v.uiHelpBaseUrl;
      _enableHelpLinks = $v.enableHelpLinks;
      _whiteLabelingEnabled = $v.whiteLabelingEnabled;
      _showNameVersion = $v.showNameVersion;
      _platformName = $v.platformName;
      _platformVersion = $v.platformVersion;
      _customCss = $v.customCss;
      _hideConnectivityDialog = $v.hideConnectivityDialog;
      _overrideTrendzName = $v.overrideTrendzName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhiteLabelingParams other) {
    _$v = other as _$WhiteLabelingParams;
  }

  @override
  void update(void Function(WhiteLabelingParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhiteLabelingParams build() => _build();

  _$WhiteLabelingParams _build() {
    _$WhiteLabelingParams _$result;
    try {
      _$result =
          _$v ??
          _$WhiteLabelingParams._(
            logoImageUrl: logoImageUrl,
            logoImageHeight: logoImageHeight,
            collapsedLogoImageUrl: collapsedLogoImageUrl,
            appTitle: appTitle,
            favicon: _favicon?.build(),
            paletteSettings: _paletteSettings?.build(),
            primaryColorPanels: primaryColorPanels,
            helpLinkBaseUrl: helpLinkBaseUrl,
            uiHelpBaseUrl: uiHelpBaseUrl,
            enableHelpLinks: enableHelpLinks,
            whiteLabelingEnabled: whiteLabelingEnabled,
            showNameVersion: showNameVersion,
            platformName: platformName,
            platformVersion: platformVersion,
            customCss: customCss,
            hideConnectivityDialog: hideConnectivityDialog,
            overrideTrendzName: overrideTrendzName,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favicon';
        _favicon?.build();
        _$failedField = 'paletteSettings';
        _paletteSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WhiteLabelingParams',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
