.class Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "ButtonLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method
