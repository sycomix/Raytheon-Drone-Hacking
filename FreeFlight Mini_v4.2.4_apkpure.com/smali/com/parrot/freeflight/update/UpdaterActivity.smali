.class public Lcom/parrot/freeflight/update/UpdaterActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "UpdaterActivity.java"


# static fields
.field private static final CONTROLLER_TAG:Ljava/lang/String; = "controller"


# instance fields
.field private mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdaterActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterActivity;->closeActivity(Z)V

    return-void
.end method

.method private closeActivity(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/UpdaterActivity;->setResult(I)V

    .line 48
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->finish()V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterActivity;->closeActivity(Z)V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f040049

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/UpdaterActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 21
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v2, "controller"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/update/UpdaterController;

    .line 22
    .local v0, "controller":Lcom/parrot/freeflight/update/UpdaterController;
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/parrot/freeflight/update/UpdaterController;

    .end local v0    # "controller":Lcom/parrot/freeflight/update/UpdaterController;
    invoke-direct {v0}, Lcom/parrot/freeflight/update/UpdaterController;-><init>()V

    .line 24
    .restart local v0    # "controller":Lcom/parrot/freeflight/update/UpdaterController;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "controller"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Lcom/parrot/freeflight/update/UpdaterActivity$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/update/UpdaterActivity$1;-><init>(Lcom/parrot/freeflight/update/UpdaterActivity;)V

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/parrot/freeflight/update/UpdaterUiController;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterActivity;->mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterActivity;->mUiController:Lcom/parrot/freeflight/update/UpdaterUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterUiController;->destroy()V

    .line 37
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 38
    return-void
.end method
