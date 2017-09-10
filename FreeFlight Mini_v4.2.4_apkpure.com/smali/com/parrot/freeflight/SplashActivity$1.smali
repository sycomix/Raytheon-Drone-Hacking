.class Lcom/parrot/freeflight/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/SplashActivity;->nextScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/SplashActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parrot/freeflight/SplashActivity$1;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$1;->this$0:Lcom/parrot/freeflight/SplashActivity;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$1;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/SplashActivity;->access$000(Lcom/parrot/freeflight/SplashActivity;)Lcom/parrot/freeflight/util/PermissionChecker;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f080623

    aput v3, v2, v4

    const v3, 0x7f080625

    new-instance v4, Lcom/parrot/freeflight/SplashActivity$1$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/SplashActivity$1$1;-><init>(Lcom/parrot/freeflight/SplashActivity$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$1;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-static {v0, v4}, Lcom/parrot/freeflight/SplashActivity;->access$100(Lcom/parrot/freeflight/SplashActivity;Z)V

    goto :goto_0
.end method
