.class Lcom/parrot/freeflight/home/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/DeviceListAdapter;

.field final synthetic val$viewHolder:Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/DeviceListAdapter;Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/DeviceListAdapter;

    .prologue
    .line 44
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter$1;, "Lcom/parrot/freeflight/home/DeviceListAdapter$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter$1;->this$0:Lcom/parrot/freeflight/home/DeviceListAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/home/DeviceListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/home/DeviceListAdapter$1;, "Lcom/parrot/freeflight/home/DeviceListAdapter$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/DeviceListAdapter$1;->this$0:Lcom/parrot/freeflight/home/DeviceListAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DeviceListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/DeviceListAdapter;->onViewHolderClicked(Lcom/parrot/freeflight/home/DeviceListAdapter$DeviceViewHolder;)V

    .line 48
    return-void
.end method
