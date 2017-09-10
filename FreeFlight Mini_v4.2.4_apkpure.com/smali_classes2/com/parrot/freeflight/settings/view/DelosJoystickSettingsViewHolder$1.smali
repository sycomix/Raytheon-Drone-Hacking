.class Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;
.super Ljava/lang/Object;
.source "DelosJoystickSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setControllerType(I)V

    .line 45
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectedDroneSettingsNormal()V

    .line 47
    :cond_0
    return-void
.end method
