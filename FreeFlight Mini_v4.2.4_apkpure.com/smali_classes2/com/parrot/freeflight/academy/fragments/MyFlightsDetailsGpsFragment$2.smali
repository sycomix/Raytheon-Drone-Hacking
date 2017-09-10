.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;
.super Ljava/lang/Object;
.source "MyFlightsDetailsGpsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$400(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;IZ)V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$400(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;IZ)V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$2;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-static {v0, v2, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$400(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;IZ)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
