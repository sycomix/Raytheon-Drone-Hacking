.class public Lcom/parrot/freeflight/piloting/preference/JoystickState;
.super Ljava/lang/Object;
.source "JoystickState.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/preference/ILocalPreference;


# instance fields
.field private mAutoRecordEnable:Z

.field private mCameraPreviewEnable:Z

.field private mHasGazJoystick:Z

.field private mHydrofoilMode:Z

.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoystickSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftHanded:Z

.field private mPilotingControllerType:I

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 23
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 24
    invoke-interface {p2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 26
    return-void
.end method


# virtual methods
.method public getControllerType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 128
    :cond_0
    return v0
.end method

.method public hasHydrofoilGazJoystick()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHasGazJoystick:Z

    return v0
.end method

.method public isAutoRecordEnable()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mAutoRecordEnable:Z

    return v0
.end method

.method public isCameraPreviewEnable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mCameraPreviewEnable:Z

    return v0
.end method

.method public isInHydrofoilMode()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHydrofoilMode:Z

    return v0
.end method

.method public isLeftHanded()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    return v0
.end method

.method public onPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 101
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 102
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getAutoRecordPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 103
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getCameraPreviewPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->update()V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultPilotingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setLeftHanded(Z)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultCameraPreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setCameraPreviewEnable(Z)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultAutoRecord()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setAutoRecordEnable(Z)V

    .line 90
    return-void
.end method

.method public setAutoRecordEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mAutoRecordEnable:Z

    if-eq v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 72
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getAutoRecordPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    :cond_0
    return-void
.end method

.method public setCameraPreviewEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mCameraPreviewEnable:Z

    if-eq v0, p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 59
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getCameraPreviewPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    :cond_0
    return-void
.end method

.method public setControllerType(I)V
    .locals 2
    .param p1, "controllerType"    # I

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    if-eq v0, p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 35
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    :cond_0
    return-void
.end method

.method public setLeftHanded(Z)V
    .locals 2
    .param p1, "leftHanded"    # Z

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    if-eq v0, p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 47
    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultPilotingType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mPilotingControllerType:I

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getLeftHandnessPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultLeftHandness()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mLeftHanded:Z

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getCameraPreviewPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultCameraPreview()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mCameraPreviewEnable:Z

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getAutoRecordPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getDefaultAutoRecord()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mAutoRecordEnable:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 83
    return-void
.end method

.method public updateHydrofoilState(ZZ)V
    .locals 2
    .param p1, "hydrofoil"    # Z
    .param p2, "hasGasJoystick"    # Z

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHydrofoilMode:Z

    if-eq v0, p1, :cond_0

    .line 113
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHydrofoilMode:Z

    .line 114
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHasGazJoystick:Z

    if-eq v0, p2, :cond_1

    .line 117
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mHasGazJoystick:Z

    .line 118
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/preference/JoystickState;->mUpdated:Z

    .line 120
    :cond_1
    return-void
.end method
