.class Lcom/parrot/freeflight/academy/AcademySignUpActivity$3;
.super Ljava/lang/Object;
.source "AcademySignUpActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/AcademySignUpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/AcademySignUpActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$3;->this$0:Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$3;->this$0:Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademySignUpActivity;->access$100(Lcom/parrot/freeflight/academy/AcademySignUpActivity;)V

    .line 109
    return-void
.end method
