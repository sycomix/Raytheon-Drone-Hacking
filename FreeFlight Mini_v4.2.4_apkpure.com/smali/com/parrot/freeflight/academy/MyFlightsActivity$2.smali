.class Lcom/parrot/freeflight/academy/MyFlightsActivity$2;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDelete(I)V
    .locals 3
    .param p1, "itemPosition"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$300(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/widget/SwipeListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->flyingToCorrectPosition(Z)V

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 96
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->remove(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->notifyDataSetChanged()V

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->removeRun(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$500(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    .line 103
    :cond_0
    return-void
.end method
