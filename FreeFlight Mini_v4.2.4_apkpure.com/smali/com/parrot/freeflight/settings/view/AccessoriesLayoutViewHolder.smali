.class public Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "AccessoriesLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$AccessorySelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field public final mRightRadioButton:Landroid/widget/RadioButton;

.field public final mSettingsNameTextView:Landroid/widget/TextView;

.field private mToggleSettingsEntry:Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 44
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0f0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 46
    const v1, 0x7f0f0222

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 47
    const v1, 0x7f0f021f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    .prologue
    .line 22
    iget v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->setEnableRadioButtons(Z)V

    return-void
.end method

.method private getAccessoryStringId(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    const v0, 0x7f0803e5

    .line 138
    .local v0, "res":I
    :goto_0
    return v0

    .line 116
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0803e2

    .line 117
    .restart local v0    # "res":I
    goto :goto_0

    .line 119
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0803e0

    .line 120
    .restart local v0    # "res":I
    goto :goto_0

    .line 122
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0803e1

    .line 123
    .restart local v0    # "res":I
    goto :goto_0

    .line 125
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0803e6

    .line 126
    .restart local v0    # "res":I
    goto :goto_0

    .line 128
    .end local v0    # "res":I
    :pswitch_4
    const v0, 0x7f0803e3

    .line 129
    .restart local v0    # "res":I
    goto :goto_0

    .line 131
    .end local v0    # "res":I
    :pswitch_5
    const v0, 0x7f0803e6

    .line 132
    .restart local v0    # "res":I
    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;)V
    .locals 9
    .param p1    # Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/16 v8, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    .line 82
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v0

    .line 84
    .local v0, "accessory":I
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mToggleSettingsEntry:Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getLeftStateName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "leftStateName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 88
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getRightStateName()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "rightStateName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 95
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    if-nez v0, :cond_3

    .line 101
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0f0220

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 102
    iput v4, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 109
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_4

    :goto_3
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->setEnableRadioButtons(Z)V

    .line 110
    return-void

    .line 90
    .end local v2    # "rightStateName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v6, 0x7f0803e2

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(I)V

    goto :goto_0

    .line 97
    .restart local v2    # "rightStateName":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getSupportedAccessory()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->getAccessoryStringId(Ljava/lang/Integer;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(I)V

    goto :goto_1

    .line 103
    :cond_3
    if-eq v0, v7, :cond_0

    if-eq v0, v8, :cond_0

    .line 105
    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0f0222

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 106
    iput v3, p0, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->mLastSelectedRadioButton:I

    goto :goto_2

    :cond_4
    move v3, v4

    .line 109
    goto :goto_3
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;->update(Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;)V

    return-void
.end method
