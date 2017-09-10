.class public Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "BooleanSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder$AccessorySelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field public final mRightRadioButton:Landroid/widget/RadioButton;

.field public final mSettingsNameTextView:Landroid/widget/TextView;


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
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLastSelectedRadioButton:I

    .line 43
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0f0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 45
    const v1, 0x7f0f0222

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 46
    const v1, 0x7f0f021f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;

    .prologue
    .line 21
    iget v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;)Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->setEnableRadioButtons(Z)V

    return-void
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 98
    .local p0, "this":Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;)V
    .locals 3
    .param p1    # Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TT;TU;>;"
    const/4 v2, 0x1

    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->getRightStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mBooleanSettingsEntry:Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->getLeftStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0f0222

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 88
    iput v2, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLastSelectedRadioButton:I

    .line 94
    :goto_0
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->setEnableRadioButtons(Z)V

    .line 95
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0f0220

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->mLastSelectedRadioButton:I

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;, "Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;)V

    return-void
.end method
