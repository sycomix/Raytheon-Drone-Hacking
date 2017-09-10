.class public Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "EditTextLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field public final mEditText:Landroid/widget/EditText;

.field private mEditTextSettingsEntry:Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

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
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 29
    const v1, 0x7f0f0200

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditText:Landroid/widget/EditText;

    .line 30
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 42
    new-instance v1, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditTextSettingsEntry:Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditTextSettingsEntry:Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;)V

    return-void
.end method
