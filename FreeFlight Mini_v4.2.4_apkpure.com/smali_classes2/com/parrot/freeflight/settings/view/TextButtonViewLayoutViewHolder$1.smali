.class Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "TextButtonViewLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    .prologue
    .line 40
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->onButtonClicked()V

    .line 44
    :cond_0
    return-void
.end method
