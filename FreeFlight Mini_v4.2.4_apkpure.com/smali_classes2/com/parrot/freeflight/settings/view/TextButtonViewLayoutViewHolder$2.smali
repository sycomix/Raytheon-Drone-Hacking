.class Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "TextButtonViewLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;"
    return-void
.end method
