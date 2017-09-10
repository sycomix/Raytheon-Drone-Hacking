.class Lcom/parrot/freeflight/academy/MyFlightsActivity$1;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;


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
    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$000(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$100(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestFlights(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 87
    return-void
.end method
