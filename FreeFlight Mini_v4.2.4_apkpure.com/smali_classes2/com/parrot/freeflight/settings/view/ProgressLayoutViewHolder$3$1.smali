.class Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;
.super Ljava/lang/Object;
.source "ProgressLayoutViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;

.field final synthetic val$valueToSend:D


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;D)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;

    .prologue
    .line 97
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;->this$1:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;

    iput-wide p2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;->val$valueToSend:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;->this$1:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3$1;->val$valueToSend:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
