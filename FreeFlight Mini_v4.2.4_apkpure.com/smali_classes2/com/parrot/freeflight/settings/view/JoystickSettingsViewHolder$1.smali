.class Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;
.super Ljava/lang/Object;
.source "JoystickSettingsViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneSettingsCamera()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setCameraPreviewEnable(Z)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewAutoRecord:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    return-void

    :cond_2
    move v0, v2

    .line 57
    goto :goto_0

    :cond_3
    move v1, v2

    .line 58
    goto :goto_1
.end method
