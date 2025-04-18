package fr.afpa.harmonia.EcoleMusique_API.models;

import jakarta.persistence.*;
import lombok.Data;

// création de la table groupe dans la base de données grâce aux annotations Data, Entity, Column, Id, etc
//Test

@Data
@Entity
@Table(name="groupe")

public class Groupe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="identifiant_groupe")
    private int identifiantGroupe;


    @Column(name="nom_groupe")
    private String nomGroupe;

}
