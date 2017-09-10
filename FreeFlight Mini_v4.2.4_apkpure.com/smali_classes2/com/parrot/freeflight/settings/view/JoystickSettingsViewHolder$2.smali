.class Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;
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
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneSettingsAutoRecord()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setAutoRecordEnable(Z)V

    .line 69
    :cond_1
    return-void
.end method
