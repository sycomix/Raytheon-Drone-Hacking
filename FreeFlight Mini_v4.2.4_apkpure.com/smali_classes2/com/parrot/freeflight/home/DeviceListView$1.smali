.class Lcom/parrot/freeflight/home/DeviceListView$1;
.super Ljava/lang/Object;
.source "DeviceListView.java"

# interfaces
.implements Lcom/parrot/freeflight/home/DeviceListAdapter$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/DeviceListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/home/DeviceListAdapter$IListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/DeviceListView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/DeviceListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/DeviceListView;

    .prologue
    .line 68
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView$1;, "Lcom/parrot/freeflight/home/DeviceListView$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListView$1;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView$1;, "Lcom/parrot/freeflight/home/DeviceListView$1;"
    .local p1, "device":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView$1;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DeviceListView;->access$000(Lcom/parrot/freeflight/home/DeviceListView;)Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView$1;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    invoke-static {v0}, Lcom/parrot/freeflight/home/DeviceListView;->access$000(Lcom/parrot/freeflight/home/DeviceListView;)Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/home/DeviceListView$OnDeviceClickListener;->onDeviceClick(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView$1;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    iget-object v0, v0, Lcom/parrot/freeflight/home/DeviceListView;->mListAdapter:Lcom/parrot/freeflight/home/DeviceListAdapter;

    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/home/DeviceListAdapter;->notifyItemChanged(I)V

    .line 76
    :cond_0
    return-void
.end method
