.class Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;
.super Ljava/lang/Object;
.source "JoystickSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->setLeftHanded(Z)V

    .line 95
    :cond_0
    return-void
.end method
