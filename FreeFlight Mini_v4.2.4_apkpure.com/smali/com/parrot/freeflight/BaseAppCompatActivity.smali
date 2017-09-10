.class public Lcom/parrot/freeflight/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->setRequestedOrientation(I)V

    .line 14
    return-void
.end method
