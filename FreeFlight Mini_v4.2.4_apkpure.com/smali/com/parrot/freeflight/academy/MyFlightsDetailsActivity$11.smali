.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->displayFlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

.field final synthetic val$finalAcademyRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->val$finalAcademyRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1800(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->val$finalAcademyRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1700(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->sendRunByEmail(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 546
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$1902(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z

    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    .line 548
    return-void
.end method
