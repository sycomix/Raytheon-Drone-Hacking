.class Lcom/parrot/freeflight/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/SplashActivity;->showPermissionRequestDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/SplashActivity;

.field final synthetic val$neverAskAgain:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/SplashActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/parrot/freeflight/SplashActivity$2;->this$0:Lcom/parrot/freeflight/SplashActivity;

    iput-boolean p2, p0, Lcom/parrot/freeflight/SplashActivity$2;->val$neverAskAgain:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-boolean v2, p0, Lcom/parrot/freeflight/SplashActivity$2;->val$neverAskAgain:Z

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "package"

    iget-object v3, p0, Lcom/parrot/freeflight/SplashActivity$2;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-virtual {v3}, Lcom/parrot/freeflight/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/parrot/freeflight/SplashActivity$2;->this$0:Lcom/parrot/freeflight/SplashActivity;

    const/16 v3, 0x7c

    invoke-virtual {v2, v0, v3}, Lcom/parrot/freeflight/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/SplashActivity$2;->this$0:Lcom/parrot/freeflight/SplashActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v3, v4

    const/16 v4, 0x7b

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
