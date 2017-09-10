.class public interface abstract Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
.super Ljava/lang/Object;
.source "IJoystickPreferences.java"


# virtual methods
.method public abstract getAutoRecordPreferenceKey()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCameraPreviewPreferenceKey()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultAutoRecord()Z
.end method

.method public abstract getDefaultCameraPreview()Z
.end method

.method public abstract getDefaultLeftHandness()Z
.end method

.method public abstract getDefaultPilotingType()I
.end method

.method public abstract getLeftHandnessPreferenceKey()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPilotingTypePreferenceKey()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSharedPreferencesKey()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
