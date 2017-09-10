.class Lcom/parrot/freeflight/home/DeviceListView$2;
.super Ljava/lang/Object;
.source "DeviceListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/DeviceListView;->switchVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/DeviceListView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/DeviceListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/DeviceListView;

    .prologue
    .line 129
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView$2;, "Lcom/parrot/freeflight/home/DeviceListView$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListView$2;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListView$2;, "Lcom/parrot/freeflight/home/DeviceListView$2;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListView$2;->this$0:Lcom/parrot/freeflight/home/DeviceListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/DeviceListView;->setVisibility(I)V

    .line 133
    return-void
.end method
