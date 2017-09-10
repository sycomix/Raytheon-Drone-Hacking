.class public Lorg/mortbay/jetty/security/Constraint;
.super Ljava/lang/Object;
.source "Constraint.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANY_ROLE:Ljava/lang/String; = "*"

.field public static final DC_CONFIDENTIAL:I = 0x2

.field public static final DC_INTEGRAL:I = 0x1

.field public static final DC_NONE:I = 0x0

.field public static final DC_UNSET:I = -0x1

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final __BASIC_AUTH:Ljava/lang/String; = "BASIC"

.field public static final __CERT_AUTH:Ljava/lang/String; = "CLIENT_CERT"

.field public static final __CERT_AUTH2:Ljava/lang/String; = "CLIENT-CERT"

.field public static final __DIGEST_AUTH:Ljava/lang/String; = "DIGEST"

.field public static final __FORM_AUTH:Ljava/lang/String; = "FORM"


# instance fields
.field private _anyRole:Z

.field private _authenticate:Z

.field private _dataConstraint:I

.field private _name:Ljava/lang/String;

.field private _roles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    .line 46
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    .line 47
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/Constraint;->_authenticate:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    .line 46
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    .line 47
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/Constraint;->_authenticate:Z

    .line 62
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/security/Constraint;->setName(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticate()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/Constraint;->_authenticate:Z

    return v0
.end method

.method public getDataConstraint()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    return v0
.end method

.method public getRoles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    return-object v0
.end method

.method public hasDataConstraint()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole(Ljava/lang/String;)Z
    .locals 4
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-boolean v3, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    if-eqz v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    array-length v0, v3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 120
    iget-object v3, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 122
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyRole()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/Constraint;->_authenticate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthenticate(Z)V
    .locals 0
    .param p1, "authenticate"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/Constraint;->_authenticate:Z

    .line 132
    return-void
.end method

.method public setDataConstraint(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 158
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraint out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput p1, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    .line 161
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/mortbay/jetty/security/Constraint;->_name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRoles([Ljava/lang/String;)V
    .locals 4
    .param p1, "roles"    # [Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    .line 86
    if-eqz p1, :cond_0

    .line 87
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    iget-boolean v2, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 88
    const-string v2, "*"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SC{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/Constraint;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/mortbay/jetty/security/Constraint;->_anyRole:Z

    if-eqz v0, :cond_0

    const-string v0, "*"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "DC_UNSET}"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "-"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/Constraint;->_roles:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    if-nez v0, :cond_3

    const-string v0, "NONE}"

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/mortbay/jetty/security/Constraint;->_dataConstraint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v0, "INTEGRAL}"

    goto :goto_1

    :cond_4
    const-string v0, "CONFIDENTIAL}"

    goto :goto_1
.end method
