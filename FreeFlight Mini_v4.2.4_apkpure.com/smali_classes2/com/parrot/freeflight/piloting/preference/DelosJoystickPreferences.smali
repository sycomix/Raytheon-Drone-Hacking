.class public Lcom/parrot/freeflight/piloting/preference/DelosJoystickPreferences;
.super Ljava/lang/Object;
.source "DelosJoystickPreferences.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;


# static fields
.field private static final AUTO_RECORD_KEY:Ljava/lang/String; = "auto_record"

.field private static final CAMERA_PREVIEW_KEY:Ljava/lang/String; = "camera_preview"

.field private static final LEFT_HAND_KEY:Ljava/lang/String; = "left_hand"

.field private static final PILOTING_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "delos_js_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoRecordPreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    const-string v0, "auto_record"

    return-object v0
.end method

.method public getCameraPreviewPreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    const-string v0, "camera_preview"

    return-object v0
.end method

.method public getDefaultAutoRecord()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultCameraPreview()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLeftHandness()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPilotingType()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    return v0
.end method

.method public getLeftHandnessPreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 24
    const-string v0, "left_hand"

    return-object v0
.end method

.method public getPilotingTypePreferenceKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    const-string v0, "type"

    return-object v0
.end method

.method public getSharedPreferencesKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 18
    const-string v0, "delos_js_pref"

    return-object v0
.end method
