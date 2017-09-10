.class public Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;
.source "WingXJoystickSettingsViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 17
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
    .locals 4
    .param p1    # Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/4 v3, 0x4

    .line 21
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 22
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isLeftHanded()Z

    move-result v0

    .line 23
    .local v0, "isLeftHanded":Z
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 25
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mCheckboxCamera:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 26
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isAutoRecordEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 27
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 29
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mTextViewAutoRecord:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, 0x7f0201b5

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    const v1, 0x7f080410

    const v2, 0x7f08040f

    invoke-virtual {p0, v1, v2, v0}, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 33
    return-void

    .line 31
    :cond_1
    const v1, 0x7f0201b2

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    check-cast p1, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V

    return-void
.end method

.method protected updateDescriptionsTextView(IIZ)V
    .locals 2
    .param p1, "firstDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "secondDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "isLeftHanded"    # Z

    .prologue
    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .end local p2    # "secondDescription":I
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void

    .restart local p2    # "secondDescription":I
    :cond_0
    move v0, p2

    .line 36
    goto :goto_0

    :cond_1
    move p2, p1

    .line 37
    goto :goto_1
.end method
