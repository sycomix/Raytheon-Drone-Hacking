.class Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;
.super Ljava/lang/Object;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$502(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z

    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2$3;->this$1:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;->this$0:Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    .line 185
    return-void
.end method
