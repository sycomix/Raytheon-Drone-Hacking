.class Lcom/parrot/freeflight/network/InternetConnectionChecker$1;
.super Ljava/lang/Object;
.source "InternetConnectionChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/network/InternetConnectionChecker;->performCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/network/InternetConnectionChecker;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/network/InternetConnectionChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/network/InternetConnectionChecker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;->this$0:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    .line 41
    iget-object v2, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;->this$0:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    const-string v3, "8.8.8.8"

    const/16 v4, 0x35

    invoke-static {v2, v3, v4, v5}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->access$000(Lcom/parrot/freeflight/network/InternetConnectionChecker;Ljava/lang/String;II)Z

    move-result v1

    .line 42
    .local v1, "hasInternet":Z
    if-nez v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;->this$0:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    const-string v3, "8.8.8.8"

    const/16 v4, 0x50

    invoke-static {v2, v3, v4, v5}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->access$000(Lcom/parrot/freeflight/network/InternetConnectionChecker;Ljava/lang/String;II)Z

    move-result v1

    .line 46
    :cond_0
    move v0, v1

    .line 47
    .local v0, "finalHasInternet":Z
    iget-object v2, p0, Lcom/parrot/freeflight/network/InternetConnectionChecker$1;->this$0:Lcom/parrot/freeflight/network/InternetConnectionChecker;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/network/InternetConnectionChecker;->notifyListener(Z)V

    .line 48
    return-void
.end method
