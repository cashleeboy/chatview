import 'dart:io';

import 'package:flutter/material.dart';

import '../../models/config_models/send_message_configuration.dart';
import '../../values/typedefs.dart';
import 'text_field_action_button.dart';

/// Gallery action button implementation.
class GalleryActionButton extends TextFieldActionButton {
  GalleryActionButton({
    required super.icon,
    required CameraActionCallback? onPressed,
    this.imagePickerConfiguration,
    super.key,
    super.color,
    super.style,
  }) : super(
          onPressed: onPressed == null ? null : (context) async {},
        );

  final ImagePickerConfiguration? imagePickerConfiguration;

  @override
  State<GalleryActionButton> createState() => _GalleryActionButtonState();
}

// As no need to custom build method,
// we are using the same state class as parent.
class _GalleryActionButtonState
    extends TextFieldActionButtonState<GalleryActionButton> {}
