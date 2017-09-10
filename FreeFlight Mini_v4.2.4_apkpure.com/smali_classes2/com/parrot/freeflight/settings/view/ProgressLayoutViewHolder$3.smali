.class Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;
.super Ljava/lang/Object;
.source "ProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 88
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 91
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;"
    if-nez p2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 94
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)D

    move-result-wide v0

    .line 97
    .local v0, "valueToSend":D
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v3, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;-><init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;D)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->post(Ljava/lang/Runnable;)Z

    .line 105
    .end local v0    # "valueToSend":D
    :cond_0
    return-void
.end method
