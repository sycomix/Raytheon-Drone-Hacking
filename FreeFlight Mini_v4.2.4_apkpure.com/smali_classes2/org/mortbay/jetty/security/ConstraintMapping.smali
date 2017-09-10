.class public Lorg/mortbay/jetty/security/ConstraintMapping;
.super Ljava/lang/Object;
.source "ConstraintMapping.java"


# instance fields
.field constraint:Lorg/mortbay/jetty/security/Constraint;

.field method:Ljava/lang/String;

.field pathSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraint()Lorg/mortbay/jetty/security/Constraint;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->constraint:Lorg/mortbay/jetty/security/Constraint;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->pathSpec:Ljava/lang/String;

    return-object v0
.end method

.method public setConstraint(Lorg/mortbay/jetty/security/Constraint;)V
    .locals 0
    .param p1, "constraint"    # Lorg/mortbay/jetty/security/Constraint;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->constraint:Lorg/mortbay/jetty/security/Constraint;

    .line 40
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->method:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/mortbay/jetty/security/ConstraintMapping;->pathSpec:Ljava/lang/String;

    .line 72
    return-void
.end method
