.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$6;
.super Ljava/lang/Object;
.source "AcademyLogInActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$6;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$6;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$200(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    .line 206
    return-void
.end method
